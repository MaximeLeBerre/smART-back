/* Replace with your SQL commands */

START TRANSACTION;
USE `smart`;
INSERT INTO `smart`.`artist` (`id`, `name`, `picture`, `description`) VALUES (1, 'Émir Shiro', 'https://yard.media/wp-content/uploads/2019/01/3O9A1318.jpg', 'Remi Pisicchio plus connu sous le nom d\'Emir Shiro, né à Grenoble, est un artiste, designer et directeur artistique français. Révélé par ses collages et son travail autour de la censure, il vous propose par cette boutique ses diverses réalisations artistiques.');
INSERT INTO `smart`.`artist` (`id`, `name`, `picture`, `description`) VALUES (2, 'Rayan Nohra', 'https://uploads-ssl.webflow.com/5c2f6e0e31b7b295e28646d6/5c3b73996bc471749e03ee9a_IMG_6330_I-2-2-3.jpg', 'Il est né en France de mère marocaine et de père libanais. Il étudie le droit mais passe l’intégralité de son temps temps libre au développement de nouvelles séries de photos mélangeant paysages et portraits.  ');
INSERT INTO `smart`.`artist` (`id`, `name`, `picture`, `description`) VALUES (3, 'Johanna Tordjman', 'https://lvdneng.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2018/03/28/node_345741/39277704/public/2018/03/28/B9715137672Z.1_20180328111228_000%2BG84AUDK4S.2-0.jpg?itok=2EnCw0c51522326746', 'J’ai toujours dessiné jusqu’au plus loin que je me souvienne. Mes premiers souvenirs viennent de la petite chambre de mes grands-parents où je décalquais, grâce à la lumière de la fenêtre. La peinture m’est venue assez naturellement ensuite, mais beaucoup plus tardivement : j’ai commencé quand j’avais 25 ans.');
INSERT INTO `smart`.`artist` (`id`, `name`, `picture`, `description`) VALUES (4, 'Bishop Nast', 'https://video-images.vice.com/campaign_items/5be43a040f03a200064a745f/lede/1541684616842-000004.jpeg?crop=1xw:0.9299719887955182xh;center,center&resize=1200:*', 'J’ai commencé la photo assez jeune, vers 2013. J’ai toujours eu une vision artistique de ce qui m’entourait et c’est la raison pour laquelle je me suis mis sérieusement à la photo au fil des années.');
INSERT INTO `smart`.`artist` (`id`, `name`, `picture`, `description`) VALUES (5, 'Hélène Tchen', 'https://i.pinimg.com/originals/9e/37/f5/9e37f5e72c9cb903731c1c739c3ce4e1.jpg', 'C’est mon intérêt pour le cinéma qui m’a amenée à la photographie. J’ai fait des études d’audiovisuel après mon bac. De fil en aiguille, j’ai commencé à faire de la photo argentique, puis du studio. Je pense que c’est surtout le fait que ce médium soit immédiat et maniable seule (ou en équipe réduite) qui m’a attirée.');
INSERT INTO `smart`.`artist` (`id`, `name`, `picture`, `description`) VALUES (6, 'Camille Cottier', 'https://cdn.shopify.com/s/files/1/0052/1968/0327/articles/Capture_d_ecran_2020-01-15_a_09.57.04.png?v=1594031082', 'J’ai exploré différents media en étant aux beaux-arts mais je suis revenue au dessin puis à la peinture. J’aime mélanger ces deux media. La plupart de mes œuvres sont d’ailleurs \"des techniques mixtes\" (qui mélangent encre, pastel, peinture, stylo…).\n\n');
INSERT INTO `smart`.`artist` (`id`, `name`, `picture`, `description`) VALUES (7, 'Inès Alpha', 'https://images.squarespace-cdn.com/content/v1/5b998b2ada02bc70d12d14d7/1574199110812-5UX5BP06JVRROXAKFUWG/ke17ZwdGBToddI8pDm48kAwCWLgraubCg9pa1NYinJkUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcD315oRNjxayYk3lSQeYIcS1Eg0Yn68tta1loSl9I3EdkdvQoiOLMtNbEoKcOj62A/Screen+Shot+2019-11-19+at+4.30.24+PM.png?format=1500w', 'Je me considère comme artiste digitale car c’est un terme qui englobe plein de choses : la post-production, l’animation, la 3D, la réalité virtuelle et augmentée, le code, etc.');

COMMIT;


START TRANSACTION;
USE `smart`;
INSERT INTO `smart`.`kind` (`id`, `name`) VALUES (1, 'Collage');
INSERT INTO `smart`.`kind` (`id`, `name`) VALUES (2, 'Photographie');
INSERT INTO `smart`.`kind` (`id`, `name`) VALUES (3, 'Peinture');
INSERT INTO `smart`.`kind` (`id`, `name`) VALUES (4, 'Réalité virtuelle');

COMMIT;


START TRANSACTION;
USE `smart`;
INSERT INTO `smart`.`theme` (`id`, `name`) VALUES (1, 'Society');
INSERT INTO `smart`.`theme` (`id`, `name`) VALUES (2, 'Nature');
INSERT INTO `smart`.`theme` (`id`, `name`) VALUES (3, 'Street');
INSERT INTO `smart`.`theme` (`id`, `name`) VALUES (4, 'Surréalisme');
INSERT INTO `smart`.`theme` (`id`, `name`) VALUES (5, '3D');

COMMIT;


START TRANSACTION;
USE `smart`;
INSERT INTO `smart`.`work` (`id`, `name`, `picture`, `date`, `kind_id`, `theme_id`, `artist_id`) VALUES (1, 'Playfull Collage ', 'https://i0.wp.com/views.fr/wp-content/uploads/2017/06/Memories.jpg?resize=1024%2C1024&ssl=1', '2020', 1, 1, 1);
INSERT INTO `smart`.`work` (`id`, `name`, `picture`, `date`, `kind_id`, `theme_id`, `artist_id`) VALUES (2, 'Bambistyle', 'https://www.arts-in-the-city.com/wp-content/uploads/2018/03/bambistyle-1024x1024.jpg?post=74814&role=slide', '2020', 1, 2, 1);
INSERT INTO `smart`.`work` (`id`, `name`, `picture`, `date`, `kind_id`, `theme_id`, `artist_id`) VALUES (3, 'Takashi Murakami', 'https://numero.twic.pics/images/flexible_grid/100/murakami-numero-art.jpg', '2020', 2, 3, 2);
INSERT INTO `smart`.`work` (`id`, `name`, `picture`, `date`, `kind_id`, `theme_id`, `artist_id`) VALUES (4, 'Falling', 'https://media.artsper.com/artwork/741348_1_m.jpg', '2018', 3, 1, 3);
INSERT INTO `smart`.`work` (`id`, `name`, `picture`, `date`, `kind_id`, `theme_id`, `artist_id`) VALUES (5, 'Ghetto', 'https://cdn.radiofrance.fr/s3/cruiser-production/2019/01/cbbcf8ad-ba5d-4aa8-9382-e9c2a7d44115/1200x680_bishop_nast_img-1069.jpg', '2019', 2, 3, 4);
INSERT INTO `smart`.`work` (`id`, `name`, `picture`, `date`, `kind_id`, `theme_id`, `artist_id`) VALUES (6, 'Picture Me Better', 'http://www.rikabitton.com/storage/cache/images/002/077/HELENE-BEAUTY-TEST38428,medium.2x.1557755814.jpg', '2021', 2, 1, 5);
INSERT INTO `smart`.`work` (`id`, `name`, `picture`, `date`, `kind_id`, `theme_id`, `artist_id`) VALUES (7, 'Bonhommes', 'https://static.wixstatic.com/media/3e09b2_01128e5415924214bc26f891a53219ef~mv2.png/v1/fill/w_560,h_636,al_c,lg_1,q_85/3e09b2_01128e5415924214bc26f891a53219ef~mv2.webp', '2019', 3, 4, 6);
INSERT INTO `smart`.`work` (`id`, `name`, `picture`, `date`, `kind_id`, `theme_id`, `artist_id`) VALUES (8, 'Non', 'https://cdn-arts.konbini.com/files/2020/03/camille_cottier_2.jpg', '2020', 3, 4, 6);
INSERT INTO `smart`.`work` (`id`, `name`, `picture`, `date`, `kind_id`, `theme_id`, `artist_id`) VALUES (9, 'Pictoplasma', 'https://conference.pictoplasma.com/files/Picto2020_InesAlpha_5.jpg', '2021', 4, 5, 7);


COMMIT;