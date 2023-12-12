const mongoose = require('mongoose');

const locationSchema = new mongoose.Schema({
// userId: {
    //     type: mongoose.Schema.Types.ObjectId,
    //     required: true,
    //     ref: 'User'
    // },
    userId: {
        type: String,
        required: true
    },
    compressedCoordinates: {
        type: {
            type: String,
            enum: ['GeoJSON'],
            default: 'GeoJSON'
        },
        coordinates: {
            type: mongoose.Schema.Types.Mixed,
            required: true
        }
    },
    coordinates: {
        type: {
            type: String,
            enum: ['Point'],
            default: 'Point'
        },
        coordinates: {
            type: [Number],
            required: true
        }
    },
    timestamp: {
        type: Date,
        default: Date.now
    }
}, {
    timestamps: true
});

locationSchema.index({ coordinates: '2dsphere' });
locationSchema.index({ 'compressedCoordinates.coordinates': '2dsphere' });

const Location = mongoose.model('CurrentLocation', locationSchema);
module.exports = Location;
