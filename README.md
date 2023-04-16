# My First Drupal 9 app

I've created this repo to practice with drupal.

I started from the Lando [Drupal 9 installation](https://docs.lando.dev/drupal/getting-started.html).

Since then, I've:

- Cloned the site to a different local machine
- Installed and enabled these modules
  - Admin toolbar
  - Admin toolbar search
  - Media
  - Media library
  - Pathauto
- Created a Pathauto rule to put the month into the URLs of articles
- Cleared the Pathauto strings to remove
- Deactivated Pathauto transliterate option
- Added a new Reference Media field to the Article Content type
- Have done these tasks between the 2 devices, keeping them in sync by reimporting the database and copying the image files
- Practised using drush to manage modules
- Moved the config sync file to the root
- Called an existing hook
- Defined and called a new hook

## Questions

### Which files should I have in the repo?

- Modules are tracked by composer, so they shouldn't need to be in version control in this project. However, this removes a step in the deployment, which could introduce an error from a new patch version of a file.
- The settings.php file stores database credentials which shouldn't be exposed but this file also specifies where the config sync directory is. Should this be added manually as instructed in the Drupalize.me cloning instructions?

#### Should we edit core or contributed modules?

- That would be another argument for tracking them in this repo, but is that bad practice?

### Do we use the config export feature

- These were moved to the root in the microsite repo but haven't been touched for a while. Is that a Thunder theme convention that we don't use?

### Process for handling Dependabot alerts

- I've got a couple of pull requests for JS tooling, how are these dealt with internally? Any difference between these and PHP/Drupal updates?

### Using cron and queues

- Having read that cron only fires after the site is visited, what is the process for ensuring things run on time? Triggering it externally?
- Should individual items be separated out into queues?

### The future of hooks

- Drupalise.me says there are now events and plugins in Drupal. How mature are these options and do you anticipate them replacing most/all hooks any time soon?
