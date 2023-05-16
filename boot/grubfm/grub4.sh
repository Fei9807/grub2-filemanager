source ${prefix}/global.sh;

 if [ "${grub_platform}" = "efi" ];
 then
   search --file /ventoy/grub4.iso --set=root        
   map -f -g /ventoy/grub4.iso;
 else
   search -f /ventoy/grub4.iso -s root;
   set grubfm_file=($root)/ventoy/grub4.iso
   configfile ${prefix}/rules/iso/map.sh
fi;  

source ${prefix}/global.sh;
