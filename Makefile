# Credit for ROOTDIR implementation:
# kenorb (https://stackoverflow.com/users/55075/kenorb),
# How to get current relative directory of your Makefile?,
# URL (version: 2017-05-23): https://stackoverflow.com/a/35698978
ROOTDIR			=	$(abspath $(patsubst %/,%,$(dir $(abspath $(lastword 		\
					$(MAKEFILE_LIST))))))

BUILD_DIR		=	$(ROOTDIR)/build
OUTPUT_DIR		=	$(patsubst %/,%,$(BUILD_DIR))

SHELL			=	/bin/sh

RM				=	rm
COPY			=	cp
LN				=	ln

R				=	Rscript

RMD_FILENAME	=	homework-instructions-rail-trail							\
					homework-instructions-titanic								\
					homework-instructions-pregnancy-lengths-inference
RMD_GROUP		=	homework-instructions-rail-trail-group-writeup

HTML			=	$(OUTPUT_DIR)/homework-instructions-rail-trail.html						\
					$(OUTPUT_DIR)/homework-instructions-titanic.html						\
					$(OUTPUT_DIR)/homework-instructions-pregnancy-lengths-inference.html
PDF				=	$(OUTPUT_DIR)/homework-instructions-rail-trail.pdf						\
					$(OUTPUT_DIR)/homework-instructions-titanic.pdf							\
					$(OUTPUT_DIR)/homework-instructions-pregnancy-lengths-inference.pdf
MD				=	$(OUTPUT_DIR)/homework-instructions-rail-trail.md						\
					$(OUTPUT_DIR)/homework-instructions-titanic.md							\
					$(OUTPUT_DIR)/homework-instructions-pregnancy-lengths-inference.md
MDGROUP			=	$(OUTPUT_DIR)/homework-instructions-rail-trail-group-writeup.md

HTML_OUTPUT		=	html_document
PDF_OUTPUT		=	pdf_document
MD_OUTPUT		=	github_document

HTML_EXT		=	$(OUTPUT_DIR)/%.html : %.Rmd
PDF_EXT			=	$(OUTPUT_DIR)/%.pdf : %.Rmd
MD_EXT			=	$(OUTPUT_DIR)/%.md : %.Rmd

IMG_FILES		=	florence-chestnut-street-rail-trail.png						\
					mass-central-logo.jpg										\
					seasons-bar-chart-1.svg										\
					titanic-photograph.jpg

MD_IMG			=	$(OUTPUT_DIR)/img/florence-chestnut-street-rail-trail.png	\
					$(OUTPUT_DIR)/img/mass-central-logo.jpg						\
					$(OUTPUT_DIR)/img/seasons-bar-chart-1.svg					\
					$(OUTPUT_DIR)/img/titanic-photograph.jpg

ALL_FILES		=	$(MD)														\
					$(MDGROUP)													\
					$(PDF)

CLEAN_FILES		=	*_files/													\
					*_cache/													\
					$(PDF:.pdf=.synctex.gz)										\
					$(PDF:.pdf=.tex)

define make_all
	@echo All builds in $(CURDIR) complete!
endef

define setup_build_directory
	mkdir -p $(1)
endef

define copy_images_folder
	$(foreach img,$(IMG_FILES),$(COPY) $(ROOTDIR)/img/$(img) $(OUTPUT_DIR)/img/$(img);)
endef

define cleanup
	-$(RM) -rf $(CLEAN_FILES)
	-$(RM) -f $(ALL_FILES)
	-$(RM) -rf $(BUILD_DIR)
endef

define install_deps
	$(R) -e "install.packages('remotes', repos = 'https://cran.rstudio.com')"	\
		 -e "remotes::install_deps()"
endef

define rmarkdown_render
	$(R) -e "rmarkdown::render(input = '$<', output_file = '$@',			\
			 output_format = '$(1)')"
endef

all : $(OUTPUT_DIR) $(MD_IMG) $(ALL_FILES)

clean :
	$(call cleanup)

env :
	$(call install_deps)

$(OUTPUT_DIR) :
	$(call setup_build_directory,"$@"/img)

$(MD_IMG) :
	$(call copy_images_folder)

$(HTML) : $(HTML_EXT)
	$(call rmarkdown_render,$(HTML_OUTPUT))

$(PDF) : $(PDF_EXT)
	$(call rmarkdown_render,$(PDF_OUTPUT))

$(MD) : $(MD_EXT)
	$(call rmarkdown_render,$(MD_OUTPUT))

$(MDGROUP) : $(MD_EXT)
	$(call rmarkdown_render,$(MD_OUTPUT))

.PHONY : all clean env
