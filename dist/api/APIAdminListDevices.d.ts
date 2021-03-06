import APIList from './APIList';
import APIResource from './APIResource';
import APIListCleanupConfigurations from "./APIListCleanupConfigurations";
import APIResourceCleanupConfiguration from "./APIResourceCleanupConfiguration";
declare class APIAdminListDevices extends APIList {
    constructor(parent: object);
    filters(): APIResource;
    cleanupConfigurations(): APIListCleanupConfigurations;
    cleanupConfiguration(id: number): APIResourceCleanupConfiguration;
    desktopBrowserCapabilities(): APIResource;
}
export default APIAdminListDevices;
