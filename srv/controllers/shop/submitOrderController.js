const submitOrderController = (req) => {
    try {
        const data = req.data;
        req.reply(data);
    } catch (error) {
        req.error(error);
    }

}

module.exports = {
    submitOrderController
}