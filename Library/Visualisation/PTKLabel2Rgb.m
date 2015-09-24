function rgb_image = PTKLabel2Rgb(label_image)
    % PTKLabel2Rgb. Converts a label image to an RGB image using the PTK
    % default colorscheme
    %
    %
    %     Licence
    %     -------
    %     Part of the TD Pulmonary Toolkit. https://github.com/tomdoel/pulmonarytoolkit
    %     Author: Tom Doel, 2015.  www.tomdoel.com
    %     Distributed under the GNU GPL v3 licence. Please see website for details.
    %

    label_image = 1 + mod(label_image - 1, 63);
    rgb_image = ind2rgb8(uint8(label_image), [[0, 0, 0]; CoreSystemUtilities.BackwardsCompatibilityColormap]);
end