<?php $this->load->view('admin/header'); ?>

<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Articles</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo base_url() . 'admin/article/index' ?>">Articles</a></li>
                    <li class="breadcrumb-item active">Create New Articles</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card card-primary">
                    <div class="card-header">
                        <div class="card-title">
                            Create New Articles
                        </div>

                    </div>
                    <form action="<?php echo base_url() . 'admin/article/create' ?>" name="categoryForm" id="categoryForm" method="post" enctype="multipart/form-data">
                        <div class="card-body">

                            <div class="form-group">
                                <label>Category</label>
                                <select class="form-control <?php echo (form_error('category_id') != '') ? 'is-invalid' : ''; ?>" name="category_id" id="category_id" >
                                    <option value="">No Selected</option>
                                    <?php foreach ($categories as $row) : ?>
                                        <option <?php echo set_select('category_id', $row['id'],false)?> value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <?php echo form_error('category_id'); ?>

                            </div>
                            <div class="form-group">
                                <label for="title"> Title</label>
                                <input type="text" name="title" placeholder="title" id="title" value="<?php echo set_value('title'); ?>" class="form-control <?php echo (form_error('title') != '') ? 'is-invalid' : ''; ?>">
                                <?php echo form_error('title'); ?>
                            </div>
                            <div class="form-group">
                                <label for="description"> Description</label>
                                <textarea name="description" id="description" class="textarea"><?php echo set_value('description'); ?></textarea>
                            </div>

                            <div class="form-group">
                                <label for="image"> Image</label><br>
                                <input type="file" name="image" id="image" value="" class="<?php echo (!empty($imageError)) ? 'is-invalid' : ''; ?>">
                                <?php if (!empty($imageError)) {
                                    echo $imageError;
                                } ?>
                            </div>
                            <div class="form-group ">
                                <label for="author"> Author</label>
                                <input type="text" name="author" placeholder="author" id="author" value="<?php echo set_value('author'); ?>" class="form-control <?php echo (form_error('author') != '') ? 'is-invalid' : ''; ?>">
                                <?php echo form_error('author'); ?>

                            </div>
                            <div class="custom-control custom-radio float-left">

                                <input type="radio" class="custom-control-input" value="1" id="statusActive" name="status" checked="">
                                <label for="statusActive" class="custom-control-label" id="statusActive">Active</label>
                            </div>
                            <div class="custom-control custom-radio float-left ml-3">
                                <input type="radio" class="custom-control-input" value="0" id="statusBlock" name="status">
                                <label for="statusBlock" class="custom-control-label" id="statusBlock">Block</label>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                            <a href="<?php echo base_url() . 'admin/article/index' ?>" class="btn btn-secondary">Back</a>
                        </div>
                    </form>

                </div>
            </div>

        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->


<?php $this->load->view('admin/footer');
