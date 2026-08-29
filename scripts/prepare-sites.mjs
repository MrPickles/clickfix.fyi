import { cp, mkdir, readdir, rename } from "node:fs/promises";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const root = join(dirname(fileURLToPath(import.meta.url)), "..");
const dist = join(root, "dist");
const client = join(dist, "client");
const server = join(dist, "server");

await mkdir(client, { recursive: true });
await mkdir(server, { recursive: true });

for (const entry of await readdir(dist)) {
  if (entry === "client" || entry === "server") continue;
  await rename(join(dist, entry), join(client, entry));
}

await cp(join(root, "src", "sites-worker.js"), join(server, "index.js"));
