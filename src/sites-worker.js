export default {
  async fetch(request, env) {
    const response = await env.ASSETS.fetch(request);

    if (response.status !== 404 || request.method !== "GET") {
      return response;
    }

    const url = new URL(request.url);
    const finalSegment = url.pathname.split("/").at(-1) ?? "";

    if (url.pathname.endsWith("/")) {
      url.pathname += "index.html";
    } else if (!finalSegment.includes(".")) {
      url.pathname += "/index.html";
    } else {
      return response;
    }

    return env.ASSETS.fetch(new Request(url, request));
  },
};
