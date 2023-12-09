const mongoose = require('mongoose');

const locationSchema = new mongoose.Schema({
    userId: {
        type: mongoose.Schema.Types.ObjectId,
        // required: true,
        // ref: 'User'
    },
    sampleId: {
        type: String, 
        required: true
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
});

locationSchema.index({ coordinates: '2dsphere' });
const Location = mongoose.model('CurrentLocation', locationSchema);
module.exports = Location;
