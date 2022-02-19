<?php $this->load->view('front/header'); ?>
<div class="container">
    <h3 class="pt-4 pb-4">Categories</h3>
    <div class="row ">
        <?php if (!empty($categories)) {
            foreach ($categories as  $category) {
        ?>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <a href="<?php echo base_url('blog/category/' . $category['id']); ?>">
                            <?php if (!empty($category['image'])) { ?>
                                <img class=" w-100 auto rounded" src="<?php echo base_url('public/uploads/category/thumb/' . $category['image']); ?>" alt="">
                            <?php } ?>
                        </a>
                        <div class="card-body pb-0 pt-2">
                            <a href="<?php echo base_url('blog/category/' . $category['id']); ?>">
                                <h5 class="card-title"><?php echo $category['name'] ?></h5>
                            </a>
                        </div>
                    </div>

                </div>
        <?php
            }
        } ?>
    </div>

</div>

<!-- Success is not final: failure is not fatal: It is the courage to continue that counts. -Winston S. Churchill -->

<?php $this->load->view('front/footer'); ?>