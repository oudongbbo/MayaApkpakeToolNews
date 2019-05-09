import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.Transparency;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.WritableRaster;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;

public class IconTools {

	public static final String ACTION_MERGE = "merge";
	public static final String ACTION_ZOOM = "zoom";
	
	public static void main(String[] args) {
		
		String type = args[0];
		
		if (ACTION_MERGE.equals(type)) {

			String bgIconPath = args[1].trim();
			String coverIconPath = args[2].trim();
			String newIconPath = args[3].trim();

			// 合并图片
			mergeBitmap(bgIconPath, coverIconPath, newIconPath);

		}else if(ACTION_ZOOM.equals(type)){
			//缩放图片
			
			int size = Integer.parseInt(args[1]);
			String iconPath = args[2].trim();
			String resultIconPath = args[3].trim();
			
			zoomIcon(size, iconPath, resultIconPath);
			
		}
		
	}

	/**合并两张图片，默认512*512
	 * @param bgIconPath 底层图片
	 * @param coverIconPath 上层图片
	 * @param newIconPath 最终图片
	 * @return
	 */
	public static boolean mergeBitmap(String bgIconPath,String coverIconPath ,String newIconPath) {

		System.out.println(">-------创建图片------<");
		System.out.println("底层图片:" + bgIconPath);
		System.out.println("上层图片:" + coverIconPath);
		System.out.println("最终图片:" + newIconPath);

		File bgIconFile = new File(bgIconPath);
		File coverIconFile = new File(coverIconPath);

		if (!bgIconFile.exists()) {
			System.out.println("背景图片不存在");
			return false;
		}
		if (!coverIconFile.exists()) {
			System.out.println("上层图片不存在");
			return false;
		}

		try {

			int imageWidth = 512;// 图片的宽度
			int imageHeight = 512;// 图片的高度
			BufferedImage image = new BufferedImage(imageWidth, imageHeight,
					BufferedImage.TYPE_INT_RGB);
			Graphics2D graphics = image.createGraphics();
			image = graphics.getDeviceConfiguration().createCompatibleImage(
					imageWidth, imageHeight, Transparency.TRANSLUCENT);
			graphics.dispose();
			graphics = image.createGraphics();
			graphics.setColor(new Color(255, 0, 0));
			graphics.setStroke(new BasicStroke(1));
			// 改成这样:
			BufferedImage bimg = null;
			try {
				bimg = ImageIO.read(new File(bgIconPath));
			} catch (Exception e) {
			}
			if (bimg != null) {
				graphics.drawImage(bimg, 0, 0, null);
			}
			BufferedImage qimg = null;
			try {
				qimg = ImageIO.read(new File(
						coverIconPath));
			} catch (Exception e) {
			}
			if (qimg != null) {
				graphics.drawImage(qimg, 0, 0, null);
			}
			// graphics.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER));
			graphics.dispose();
			return ImageIO.write(image, "png", new File(newIconPath));
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	/**
	 * 输出修改size后的新ICON
	 * 
	 * @param size 新ICON尺寸
	 * @param iconPath 修改之前的路径
	 * @param resultIconPath 修改尺寸后的路径
	 */
	public static void zoomIcon(int size, String iconPath,String resultIconPath) {
		
		System.out.println(">-------缩放尺寸------<");
		System.out.println("新尺寸:" + size);
		System.out.println("旧icon路径:" + iconPath);
		System.out.println("新icon路径:" + resultIconPath);
		
		
		try {
			BufferedImage image = ImageIO.read(new File(iconPath));
			image = changeIconSize(image, size);
			ImageIO.write(image, "png", new FileOutputStream(resultIconPath));

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	/**
	 * ICON修改尺寸主要方法
	 * 
	 * @param image
	 *            图片
	 * @param size
	 *            尺寸
	 * @return
	 */
	public static BufferedImage changeIconSize(BufferedImage image, int size) {

		int type = image.getType();
		BufferedImage target = null;
		double sx = (double) size / image.getWidth();
		double sy = (double) size / image.getHeight();
		// 这里想实现在size，size范围内实现等比缩放。如果不需要等比缩放
		// 则将下面的if else语句注释即可
		if (sx > sy) {
			sx = sy;
			size = (int) (sx * image.getWidth());
		} else {
			sy = sx;
			size = (int) (sy * image.getHeight());
		}
		if (type == BufferedImage.TYPE_CUSTOM) { // handmade
			ColorModel cm = image.getColorModel();
			WritableRaster raster = cm.createCompatibleWritableRaster(size,
					size);
			boolean alphaPremultiplied = cm.isAlphaPremultiplied();
			target = new BufferedImage(cm, raster, alphaPremultiplied, null);
		} else {
			// 固定宽高，宽高一定要比原图片大
			// target = new BufferedImage(size, size, type);
			target = new BufferedImage(size, size, type);
		}

		Graphics2D g = target.createGraphics();

		// 写入背景
		// g.drawImage(ImageIO.read(new File("ok/blank.png")), 0, 0, null);

		// smoother than exlax:
		g.setRenderingHint(RenderingHints.KEY_RENDERING,
				RenderingHints.VALUE_RENDER_QUALITY);
		g.drawRenderedImage(image, AffineTransform.getScaleInstance(sx, sy));
		g.dispose();

		return target;

	}

}
