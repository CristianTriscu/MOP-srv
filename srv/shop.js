const { submitOrderController } = require("./controllers/shop/submitOrderController");

class Shop extends cds.ApplicationService {
    async init() {
        this.on("submitOrder", submitOrderController);

        await super.init();
    }
}

module.exports = {
    Shop
}