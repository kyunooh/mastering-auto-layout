/**
 * Copyright (c) 2018 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

final class WeatherViewController: UIViewController {
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
    let images = [#imageLiteral(resourceName: "weather-sun"), #imageLiteral(resourceName: "weather-windy"), #imageLiteral(resourceName: "weather-thunderstorm")]
    
    let imageViews: [UIImageView] = images.map {image in
      let imageView = UIImageView(image: image)
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }
    
    imageViews.forEach(stackView.addArrangedSubview)
    
    let imageCount = CGFloat(imageViews.count)
    let constraint = stackView.widthAnchor.constraint(equalTo: imageViews.first!.widthAnchor, multiplier: imageCount, constant: 80 * (imageCount - 1))
    constraint.priority = UILayoutPriority(749)
    
    NSLayoutConstraint.activate(
        imageViews.map { imageView in
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor)
        }
    )
  }
}












