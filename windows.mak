DMD=dmd
DFLAGS=-m64 -O -release

LIBNAME=DMagick.lib
MAGICKCOREDLLNAME=CORE_RL_magick_.dll
MAGICKCORELIBNAME=MagickCore.lib

target : $(LIBNAME) $(MAGICKCORELIBNAME)

SOURCE= \
	source/dmagick/Array.d \
	source/dmagick/CoderInfo.d \
	source/dmagick/Color.d \
	source/dmagick/ColorCMYK.d \
	source/dmagick/ColorGray.d \
	source/dmagick/ColorHSL.d \
	source/dmagick/ColorRGB.d \
	source/dmagick/ColorYUV.d \
	source/dmagick/DrawingContext.d \
	source/dmagick/Exception.d \
	source/dmagick/Geometry.d \
	source/dmagick/Image.d \
	source/dmagick/ImageView.d \
	source/dmagick/Montage.d \
	source/dmagick/Options.d \
	source/dmagick/Utils.d \
	\
	source/dmagick/c\accelerate.d \
	source/dmagick/c\animate.d \
	source/dmagick/c\annotate.d \
	source/dmagick/c\artifact.d \
	source/dmagick/c\attribute.d \
	source/dmagick/c\blob.d \
	source/dmagick/c\cache.d \
	source/dmagick/c\cacheView.d \
	source/dmagick/c\channel.d \
	source/dmagick/c\cipher.d \
	source/dmagick/c\client.d \
	source/dmagick/c\coder.d \
	source/dmagick/c\color.d \
	source/dmagick/c\colormap.d \
	source/dmagick/c\colorspace.d \
	source/dmagick/c\compare.d \
	source/dmagick/c\composite.d \
	source/dmagick/c\compress.d \
	source/dmagick/c\configure.d \
	source/dmagick/c\constitute.d \
	source/dmagick/c\decorate.d \
	source/dmagick/c\deprecate.d \
	source/dmagick/c\display.d \
	source/dmagick/c\distort.d \
	source/dmagick/c\draw.d \
	source/dmagick/c\effect.d \
	source/dmagick/c\enhance.d \
	source/dmagick/c\exception.d \
	source/dmagick/c\feature.d \
	source/dmagick/c\fourier.d \
	source/dmagick/c\fx.d \
	source/dmagick/c\gem.d \
	source/dmagick/c\geometry.d \
	source/dmagick/c\hashmap.d \
	source/dmagick/c\histogram.d \
	source/dmagick/c\identify.d \
	source/dmagick/c\image.d \
	source/dmagick/c\imageView.d \
	source/dmagick/c\layer.d \
	source/dmagick/c\list.d \
	source/dmagick/c\locale.d \
	source/dmagick/c\log.d \
	source/dmagick/c\magic.d \
	source/dmagick/c\magick.d \
	source/dmagick/c\MagickCore.d \
	source/dmagick/c\magickDelegate.d \
	source/dmagick/c\magickModule.d \
	source/dmagick/c\magickString.d \
	source/dmagick/c\magickType.d \
	source/dmagick/c\magickVersion.d \
	source/dmagick/c\matrix.d \
	source/dmagick/c\memory.d \
	source/dmagick/c\mime.d \
	source/dmagick/c\monitor.d \
	source/dmagick/c\montage.d \
	source/dmagick/c\morphology.d \
	source/dmagick/c\option.d \
	source/dmagick/c\paint.d \
	source/dmagick/c\pixel.d \
	source/dmagick/c\policy.d \
	source/dmagick/c\prepress.d \
	source/dmagick/c\profile.d \
	source/dmagick/c\property.d \
	source/dmagick/c\quantize.d \
	source/dmagick/c\quantum.d \
	source/dmagick/c\random.d \
	source/dmagick/c\registry.d \
	source/dmagick/c\resample.d \
	source/dmagick/c\resize.d \
	source/dmagick/c\resource.d \
	source/dmagick/c\segment.d \
	source/dmagick/c\semaphore.d \
	source/dmagick/c\shear.d \
	source/dmagick/c\signature.d \
	source/dmagick/c\splayTree.d \
	source/dmagick/c\statistic.d \
	source/dmagick/c\stream.d \
	source/dmagick/c\threshold.d \
	source/dmagick/c\timer.d \
	source/dmagick/c\token.d \
	source/dmagick/c\transform.d \
	source/dmagick/c\type.d \
	source/dmagick/c\utility.d \
	source/dmagick/c\xmlTree.d \
	source/dmagick/c\xwindow.d \
	\
	source/dmagick/internal\Windows.d \
	
################## DOCS ####################################

DOCS= \
	docs\Array.html \
	docs\CoderInfo.html \
	docs\Color.html \
	docs\ColorCMYK.html \
	docs\ColorGray.html \
	docs\ColorHSL.html \
	docs\ColorRGB.html \
	docs\ColorYUV.html \
	docs\DrawingContext.html \
	docs\Exception.html \
	docs\Geometry.html \
	docs\Image.html \
	docs\ImageView.html \
	docs\Montage.html \
	docs\Options.html \
	docs\Utils.html \
	\
	docs\c\accelerate.html \
	docs\c\animate.html \
	docs\c\annotate.html \
	docs\c\artifact.html \
	docs\c\attribute.html \
	docs\c\blob.html \
	docs\c\cache.html \
	docs\c\cacheView.html \
	docs\c\cipher.html \
	docs\c\client.html \
	docs\c\coder.html \
	docs\c\color.html \
	docs\c\colormap.html \
	docs\c\colorspace.html \
	docs\c\compare.html \
	docs\c\composite.html \
	docs\c\compress.html \
	docs\c\configure.html \
	docs\c\constitute.html \
	docs\c\decorate.html \
	docs\c\deprecate.html \
	docs\c\display.html \
	docs\c\distort.html \
	docs\c\draw.html \
	docs\c\effect.html \
	docs\c\enhance.html \
	docs\c\exception.html \
	docs\c\feature.html \
	docs\c\fourier.html \
	docs\c\fx.html \
	docs\c\gem.html \
	docs\c\geometry.html \
	docs\c\hashmap.html \
	docs\c\histogram.html \
	docs\c\identify.html \
	docs\c\image.html \
	docs\c\imageView.html \
	docs\c\layer.html \
	docs\c\list.html \
	docs\c\locale.html \
	docs\c\log.html \
	docs\c\magic.html \
	docs\c\magick.html \
	docs\c\MagickCore.html \
	docs\c\magickDelegate.html \
	docs\c\magickModule.html \
	docs\c\magickString.html \
	docs\c\magickType.html \
	docs\c\magickVersion.html \
	docs\c\matrix.html \
	docs\c\memory.html \
	docs\c\mime.html \
	docs\c\monitor.html \
	docs\c\montage.html \
	docs\c\morphology.html \
	docs\c\option.html \
	docs\c\paint.html \
	docs\c\pixel.html \
	docs\c\policy.html \
	docs\c\prepress.html \
	docs\c\profile.html \
	docs\c\property.html \
	docs\c\quantize.html \
	docs\c\quantum.html \
	docs\c\random.html \
	docs\c\registry.html \
	docs\c\resample.html \
	docs\c\resize.html \
	docs\c\resource.html \
	docs\c\segment.html \
	docs\c\semaphore.html \
	docs\c\shear.html \
	docs\c\signature.html \
	docs\c\splayTree.html \
	docs\c\statistic.html \
	docs\c\stream.html \
	docs\c\threshold.html \
	docs\c\timer.html \
	docs\c\token.html \
	docs\c\transform.html \
	docs\c\type.html \
	docs\c\utility.html \
	docs\c\xmlTree.html \
	docs\c\xwindow.html

html: docs
docs: $(DOCS)

docs\Array.html: source/dmagick/Array.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\CoderInfo.html: source/dmagick/CoderInfo.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\Color.html: source/dmagick/Color.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\ColorCMYK.html: source/dmagick/ColorCMYK.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\ColorGray.html: source/dmagick/ColorGray.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\ColorHSL.html: source/dmagick/ColorHSL.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\ColorRGB.html: source/dmagick/ColorRGB.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\ColorYUV.html: source/dmagick/ColorYUV.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\DrawingContext.html: source/dmagick/DrawingContext.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\Exception.html: source/dmagick/Exception.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\Geometry.html: source/dmagick/Geometry.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\Image.html: source/dmagick/Image.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\ImageView.html: source/dmagick/ImageView.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\Montage.html: source/dmagick/Montage.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\Options.html: source/dmagick/Options.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\Utils.html: source/dmagick/Utils.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc -Df$@

docs\c\accelerate.html: source/dmagick/c\accelerate.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\animate.html: source/dmagick/c\animate.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\annotate.html: source/dmagick/c\annotate.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\artifact.html: source/dmagick/c\artifact.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\attribute.html: source/dmagick/c\attribute.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\blob.html: source/dmagick/c\blob.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\cache.html: source/dmagick/c\cache.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\cacheView.html: source/dmagick/c\cacheView.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\cipher.html: source/dmagick/c\cipher.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\client.html: source/dmagick/c\client.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\coder.html: source/dmagick/c\coder.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\color.html: source/dmagick/c\color.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\colormap.html: source/dmagick/c\colormap.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\colorspace.html: source/dmagick/c\colorspace.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\compare.html: source/dmagick/c\compare.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\composite.html: source/dmagick/c\composite.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\compress.html: source/dmagick/c\compress.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\configure.html: source/dmagick/c\configure.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\constitute.html: source/dmagick/c\constitute.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\decorate.html: source/dmagick/c\decorate.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\deprecate.html: source/dmagick/c\deprecate.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\display.html: source/dmagick/c\display.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\distort.html: source/dmagick/c\distort.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\draw.html: source/dmagick/c\draw.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\effect.html: source/dmagick/c\effect.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\enhance.html: source/dmagick/c\enhance.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\exception.html: source/dmagick/c\exception.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\feature.html: source/dmagick/c\feature.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\fourier.html: source/dmagick/c\fourier.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\fx.html: source/dmagick/c\fx.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\gem.html: source/dmagick/c\gem.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\geometry.html: source/dmagick/c\geometry.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\hashmap.html: source/dmagick/c\hashmap.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\histogram.html: source/dmagick/c\histogram.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\identify.html: source/dmagick/c\identify.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\image.html: source/dmagick/c\image.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\imageView.html: source/dmagick/c\imageView.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\layer.html: source/dmagick/c\layer.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\list.html: source/dmagick/c\list.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\locale.html: source/dmagick/c\locale.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\log.html: source/dmagick/c\log.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\magic.html: source/dmagick/c\magic.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\magick.html: source/dmagick/c\magick.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\MagickCore.html: source/dmagick/c\MagickCore.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\magickDelegate.html: source/dmagick/c\magickDelegate.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\magickModule.html: source/dmagick/c\magickModule.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\magickString.html: source/dmagick/c\magickString.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\magickType.html: source/dmagick/c\magickType.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\magickVersion.html: source/dmagick/c\magickVersion.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\matrix.html: source/dmagick/c\matrix.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\memory.html: source/dmagick/c\memory.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\mime.html: source/dmagick/c\mime.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\monitor.html: source/dmagick/c\monitor.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\montage.html: source/dmagick/c\montage.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\morphology.html: source/dmagick/c\morphology.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\option.html: source/dmagick/c\option.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\paint.html: source/dmagick/c\paint.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\pixel.html: source/dmagick/c\pixel.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\policy.html: source/dmagick/c\policy.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\prepress.html: source/dmagick/c\prepress.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\profile.html: source/dmagick/c\profile.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\property.html: source/dmagick/c\property.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\quantize.html: source/dmagick/c\quantize.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\quantum.html: source/dmagick/c\quantum.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\random.html: source/dmagick/c\random.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\registry.html: source/dmagick/c\registry.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\resample.html: source/dmagick/c\resample.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\resize.html: source/dmagick/c\resize.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\resource.html: source/dmagick/c\resource.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\segment.html: source/dmagick/c\segment.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\semaphore.html: source/dmagick/c\semaphore.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\shear.html: source/dmagick/c\shear.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\signature.html: source/dmagick/c\signature.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\splayTree.html: source/dmagick/c\splayTree.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\statistic.html: source/dmagick/c\statistic.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\stream.html: source/dmagick/c\stream.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\threshold.html: source/dmagick/c\threshold.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\timer.html: source/dmagick/c\timer.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\token.html: source/dmagick/c\token.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\transform.html: source/dmagick/c\transform.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\type.html: source/dmagick/c\type.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\utility.html: source/dmagick/c\utility.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\xmlTree.html: source/dmagick/c\xmlTree.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

docs\c\xwindow.html: source/dmagick/c\xwindow.d
	$(DMD) $** $(DFLAGS) -c -o- -I. docs\dmagick.ddoc docs\dmagick.c.ddoc -Df$@

################### Library generation #########################

$(LIBNAME): $(SOURCE)
	$(DMD) -m64 -lib -of$(LIBNAME) $(DFLAGS) $(SOURCE)

unittest: stubmain.d $(SOURCE) $(MAGICKCORELIBNAME)
	$(DMD) -of$@.exe -unittest $(DFLAGS) $**
	unittest

$(MAGICKCORELIBNAME):
	@echo @for %%i in (%1) do @if NOT "%%~$$PATH:i"=="" @copy "%%~$$PATH:i" > copydll.bat
	copydll $(MAGICKCOREDLLNAME)
	implib /s $@ $(MAGICKCOREDLLNAME)
	@del copydll.bat
	del $(MAGICKCOREDLLNAME)

stubmain.d:
	echo void main(){} > $@

clean:
	del $(LIBNAME)
	del $(MAGICKCORELIBNAME)
	del $(DOCS)
	del stubmain.d unittest.obj unittest.exe
