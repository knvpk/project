{
  plugins.cmp-ai = {
    enable = true;
    settings = {
      provider = "OpenAI";

      provider_options = { model = "gpt4"; };
      notify = true;
    };
  };
}
