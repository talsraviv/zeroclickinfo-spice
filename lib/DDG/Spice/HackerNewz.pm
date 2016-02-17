package DDG::Spice::HackerNewz;

# ABSTRACT: Write an abstract here

# Start at http://docs.duckduckhack.com/walkthroughs/forum-lookup.html if you are new
# to instant answer development

use DDG::Spice;

# Caching - http://docs.duckduckhack.com/backend-reference/api-reference.html#caching
spice is_cached => 1;
spice proxy_cache_valid => "200 1d"; # defaults to this automatically

spice wrap_jsonp_callback => 1; # only enable for non-JSONP APIs (i.e. no &callback= parameter)

# API endpoint - http://docs.duckduckhack.com/walkthroughs/forum-lookup.html#api-endpoint
spice to => 'https://hn.algolia.com/api/v1/search?query=$1&tags=story';

# Triggers - https://duck.co/duckduckhack/spice_triggers
triggers startend => "hacker newz"

# Handle statement
handle remainder => sub {
    return unless $_;
    return;
};

1;
