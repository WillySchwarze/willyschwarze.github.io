mkdir -p assets/js/bootstrap
cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.js assets/js/bootstrap
cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.js.map assets/js/bootstrap

mkdir -p assets/js/mastodon-embed-timeline assets/css/mastodon-embed-timeline
cp node_modules/@idotj/mastodon-embed-timeline/dist/mastodon-timeline.umd.js assets/js/mastodon-embed-timeline
cp node_modules/@idotj/mastodon-embed-timeline/dist/mastodon-timeline.min.css assets/css/mastodon-embed-timeline

mkdir -p assets/css/bootstrap-icons static/css/bootstrap-icons/
cp node_modules/bootstrap-icons/font/bootstrap-icons.min.css assets/css/bootstrap-icons
cp -r node_modules/bootstrap-icons/font/fonts static/css/bootstrap-icons/
