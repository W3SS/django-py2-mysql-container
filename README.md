# Django container

Your django app must be located in the same folder with your dockerfile and contain
a running script, like the included one.

Use it like this:
```
FROM f213/django-py2-mysql-container
```

During build your app is copied to the `/app` folder. Entrypoint should be located at `/app/run`.
Example entrypoint is shipped with this repo.
