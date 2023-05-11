export interface IonicWatchConnectivityPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
