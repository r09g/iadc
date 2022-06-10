export OPEN_PDK="/farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.313/sky130/"

config_folder=~/.klayout/

if !(test -d "$config_folder"); then
    mkdir ~/.klayout/
fi

drc_folder=drc

if !(test -d "${config_folder}${drc_folder}"); then
    mkdir ~/.klayout/drc
fi

tech_folder=tech

if !(test -d "${config_folder}${tech_folder}"); then
    mkdir ~/.klayout/tech
    mkdir ~/.klayout/tech/sky130A
fi

# Copies the tech file and drc rule file.
cp ${OPEN_PDK}/sky130A/libs.tech/klayout/sky130A.lyp ~/.klayout/tech/sky130A
cp ${OPEN_PDK}/sky130A/libs.tech/klayout/sky130A.lyt ~/.klayout/tech/sky130A
cp ${OPEN_PDK}/sky130A/libs.tech/klayout/sky130A.lydrc ~/.klayout/drc
