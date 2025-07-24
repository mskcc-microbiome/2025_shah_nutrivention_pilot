library(ggplot2)

f_sv_prfx = "figures/"
save_figures <- function(name_base, save_date = F, w = 8, h = 8){
  if (save_date) { # allows for snapshots to be saved based on date:
    ggsave(paste0(f_sv_prfx, "svg/dated_versions/", Sys.Date(), "_", name_base, ".svg"),width=8, height=8)
    ggsave(paste0(f_sv_prfx, "png/dated_versions/", Sys.Date(), "_", name_base, ".png"),width=8, height=8)
  }
  ggsave(paste0(f_sv_prfx, "svg/", name_base, ".svg"),width=w, height=h)
  ggsave(paste0(f_sv_prfx, "png/", name_base, ".png"),width=w, height=h)
  return(paste0(f_sv_prfx, "png/", name_base, ".png"))
}