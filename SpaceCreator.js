var component;

function createSpaceObject(spacename) {
    component = Qt.createComponent(spacename);
    if (component.status === Component.Ready || component.status === Component.Error) {
        finishCreation();
    } else {
        component.statusChanged.connect(finishCreation);
    }
}

function finishCreation() {
    if (component.status === Component.Ready) {
        var space = component.createObject(multiview, {});
        if (space === null) {
            console.log("Error creating space");
        }
    } else if (component.status === Component.Error) {
        console.log("Error loading component:", component.errorString());
    }
}
