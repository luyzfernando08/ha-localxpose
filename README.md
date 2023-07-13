# Home Assistant - LocalXpose

## About

- Addon to connect to the LocalXpose service
- This add-on creates a LocalXpose tunnel over http and https. It also provides a RESTful API that can be used to integrate your tunnel status into Home Assistant. Some ISPs do not allow port forwarding due to port blocking or CG-NAT. If you're able to setup a port forward, do not use this addon.

# Documentation

## How to use

1. Add the Github repo to your Hass.io: <https://github.com/luyzfernando08/ha-localxpose>
2. Install the addon
4. Configure the options in the addon (command line and token).
5. Add this addon to your `trusted_proxies` list in `configuration.yaml`.

    ```yaml
      http:
        use_x_forwarded_for: true
        trusted_proxies:
        - 127.0.0.1
        - 172.30.32.0/24
        - 172.30.33.0/24
    ```

    **Note**: _If you've modified your Supervisor or Docker network you may_
    _need to update the addresses for your system. See [Home Assistant's documentation][trusted_proxies_docs]_
    _for more info._

6. Start the addon
7. Restart Home Assistant Core

Example add-on configuration:

```yaml
  command: >-
    tunnel http --to http://xxx.xxx.xx.x --reserved-domain
    my-sub-domain.loclx.io --https-redirect
  token: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```
