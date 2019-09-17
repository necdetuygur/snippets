root = new Vue({
    "el": "#root",
    computed: {
        currentStep: {
            cache: false,
            get: function(){
                self = this;
                return _.find(self.steps, {"selected": true});
            }
        }
    }
}