{ lib, pkgs, config, ... }: {

  options = {
    wofi.enable = lib.mkEnableOption "Enable wofi";
  };

  config = lib.mkIf config.wofi.enable {
    programs.wofi = {
      enable = true;
      settings = {
        term = "kitty";
	location = "top";
	yoffset = 180;
	width = "16%";
	prompt = "";
	show = "drun";
	insensitive = true;
	allow_images = true;
	hide_scroll = true;
	allow_parse_args = true;
	show_all = true;
	style = ''
          * {
              font-family: "Noto Sans Mono";
              font-size: 15px;
              font-weight: normal;
          }
          
          
          #window {
              margin: 0px;
              border: 2.0px solid;
              border-color: #6DA259;
              border-radius: 10px;
              background-color: rgba(0, 0, 0, 0.4);
              color:  /*rgb(235, 77, 129)*/ #f1f1f1;
          }
          
          #input {
              margin: 15px;
              background-color: rgba(0, 0, 0, 0.4);
          		opacity: 0.8;
              color: white;
              border-radius: 25px;
              border: 2px solid rgb(52, 64, 76);
          }
          
          #scroll {
              margin-bottom: 15px;
          }
          
          #entry {
              margin: 0px 15px;
          }
          
          #entry:selected {
              /*background-color: /*rgb(245, 98, 36);*/
              background-color: #6DA259;
              border-radius: 5px;
              border: none;
              outline: none;
          }
          
          #entry > box {
              margin-left: 16px;
          }
          
          #entry image {
              padding-right: 10px;
          }
          
          #colors {
              color: rgb(37, 38, 51);
              color: rgb(52, 64, 76);
              color: rgb(76, 90, 107);
              color: rgb(112, 122, 137);
              color: rgb(235, 77, 129);
              color: rgb(245, 98, 36);
          }
	'';
      };
    };
  };

}
