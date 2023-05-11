import { registerPlugin } from '@capacitor/core';

import type { IonicWatchConnectivityPlugin } from './definitions';

const IonicWatchConnectivity = registerPlugin<IonicWatchConnectivityPlugin>(
  'IonicWatchConnectivity',
  {
    web: () => import('./web').then(m => new m.IonicWatchConnectivityWeb()),
  },
);

export * from './definitions';
export { IonicWatchConnectivity };
