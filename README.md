# meta-seapath-qcom

The meta-seapath-qcom repo contains the yocto Seapath layer, which contains all the code (yocto recipes) needed to build the SEAPATH images for the Qualcomm boards.

## Available machines

| Name in yocto                  | Supported board     |
| ------------------------------ | ------------------- |
| seapath-hypervisor-iq-9075-evk | qcs9075-iq-9075-evk |

## Distro

The distro to use for now is seapath-host-qcom, it extends the seapath-host distro but disables the clustering, hardening and readonly DISTRO_FEATURES to allow debugging.
