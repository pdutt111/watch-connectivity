export interface WatchConnectivityPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
