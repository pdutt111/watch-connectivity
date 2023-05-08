import { registerPlugin } from '@capacitor/core';

import type { WatchConnectivityPlugin } from './definitions';

const WatchConnectivity = registerPlugin<WatchConnectivityPlugin>(
  'WatchConnectivity',
  {
    web: () => import('./web').then(m => new m.WatchConnectivityWeb()),
  },
);

export * from './definitions';
export { WatchConnectivity };
