<?php $this->load->view('front/header'); ?>

<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="<?php echo base_url('public/images/slide1.jpg') ?>" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<?php echo base_url('public/images/slide2.jpg') ?>" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<?php echo base_url('public/images/slide3.jpg') ?>" class="d-block w-100" alt="...">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>


<main>
    <!-- <section class="carousel">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="<?php echo base_url('public/images/slide1.jpg') ?>" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="<?php echo base_url('public/images/slide2.jpg') ?>" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="<?php echo base_url('public/images/slide3.jpg') ?>" class="d-block w-100" alt="...">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section> -->

    <section class="about-company ">
        <div class="container pt-4 pb-4">
            <h3 class="pb-3">About Company</h3>
            <p class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos dolore voluptates illo? Sequi quod a quas tempora id. Iure molestiae delectus ducimus, sunt facilis voluptatibus consectetur mollitia asperiores alias similique adipisci sequi voluptate in excepturi sint minus tempore explicabo nisi. Qui, dolores numquam, eligendi dignissimos quas dolore ex iure, enim a consequatur in commodi sed tempore atque eaque voluptatem accusamus beatae! Illum commodi excepturi cumque maiores, veniam alias odit consectetur debitis aperiam provident ratione ea aliquam! Necessitatibus quo modi atque.</p>
            <p class="text-muted">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Error tenetur dolores harum totam voluptate tempora illo, aut repellat assumenda ipsam cum vitae consequatur id? Porro cumque placeat ut numquam et dolorem dolor neque vitae. Corrupti magni eligendi deleniti, ut ipsum earum alias et fugit consequatur! Doloribus provident quaerat sint alias et quidem animi aliquid ratione ea eum iure blanditiis natus inventore, aperiam laboriosam eveniet reiciendis minus, necessitatibus, obcaecati quia. Impedit reprehenderit eos excepturi deleniti illum sunt, placeat, veniam voluptatum porro distinctio, expedita quis. Rerum omnis magnam laborum blanditiis voluptatibus impedit illo a vero eos facilis nesciunt laudantium ex tenetur labore saepe sit, repellendus dolorum repellat doloremque vel architecto inventore, nobis tempora? Blanditiis quod fuga ad autem quidem accusamus? Ea, accusamus.</p>

        </div>
    </section>

    <section class="our-services bg-light pb-4">
        <div class="container">
            <h3 class="pb-3 pt-4">OUR SERVICES</h3>
            <div class="row">
                <div class="col-md-3">
                    <div class="card h-100">
                        <img src="<?php echo base_url('public/images/box1.jpg') ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Website Development</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100">
                        <img src="<?php echo base_url('public/images/box2.jpg') ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Digital Marketing</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100">
                        <img src="<?php echo base_url('public/images/box3.jpg') ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Mobile App Development</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100">
                        <img src="<?php echo base_url('public/images/box4.jpg') ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">IT Consulting Services</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php if (!empty($articles)) { ?>
        <section class="latest-blogs pb-4 pt-4">
            <div class="container">
                <h3 class="pb-3 pt-4">LATEST BLOGS</h3>
                <div class="row">
                    <?php foreach ($articles as $article) { ?>
                        <div class="col-md-3">
                            <div class="card h-100">
                                <a href="<?php echo base_url('blog/detail/' . $article['id']) ?>">
                                    <?php if (file_exists('./public/uploads/articles/thumb_admin/' . $article['image'])) { ?>
                                        <img src="<?php echo base_url('./public/uploads/articles/thumb_admin/' . $article['image']) ?>" class="card-img-top" alt="...">
                                    <?php } ?>
                                </a>
                                <div class="card-body">
                                    <p class="card-text"><?php echo $article['title'] ?></p>
                                    <a class="btn btn-primary btn-sm" href="<?php echo base_url('blog/detail/' . $article['id']) ?>">Read More</a>

                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </section>
    <?php } ?>
</main>

<?php $this->load->view('front/footer'); ?>