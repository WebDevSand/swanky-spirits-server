const mongoose = require('mongoose')

const inventorySchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  unit_price: {
    type: Number,
    required: true
  },
  quantity: {
    type: Number,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User'
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Inventory', inventorySchema)
