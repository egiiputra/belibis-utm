<?= $this->extend('layout/user/kompleks'); ?>
<?= $this->section('content'); ?>
<?= session()->getFlashdata('pesan'); ?>

<div class="content">
    <div class="intro-y flex items-center mt-8">
        <h2 class="text-lg font-medium mr-auto">
            Daftar anggota
        </h2>
    </div>
    <div class="grid grid-cols-12 gap-6 mt-5">
        <div class="col-span-12 lg:col-span-1"></div>
        <div class="intro-y col-span-12 lg:col-span-10">
            <div class="intro-y box">
                <div class="flex flex-row sm:flex-row items-center p-5 border-b border-gray-200 dark:border-dark-5">
                    <h2 class="font-medium text-base">
                        Pengajar
                    </h2>
                    <button id="btn-undang-pengajar" class="button bg-theme-1 text-white ml-5">
                        Undang pengajar
                    </button>
                </div>
                <div class="p-5" id="add-pengajar-form">
                    <form action="" method="POST" enctype="multipart/form-data" class="validate-form">
                        <div>
                            <input type="text" id="email-pengajar" name="email-pengajar" class="input border w-1/2 xs:w-full" value="" placeholder="Email pengajar" required>
                        </div>
                        <button id="hide-pengajar-form" class="button bg-theme-14 text-theme-10 mt-5">
                            Cancel
                        </button>
                        <button type="submit" class="button bg-theme-1 text-white mt-5 ml-5">Undang</button>
                    </form>
                </div>
                <div id="list-pengajar" class="p-5">
                    <?php
                    $data['pengajar'] = $pengajar;
                    echo View('super_user/list-pengajar', $data);
                    ?>
                </div>
            </div>
            <div class="intro-y box">
                <div class="flex flex-row sm:flex-row items-center p-5 border-b border-gray-200 dark:border-dark-5">
                    <h2 class="font-medium text-base">
                        Pelajar
                    </h2>
                </div>
                <div class="p-5">
                    <?php foreach ($pelajar as $p): ?>

                    <div class="flex flex-row items-start p-5 border-b border-gray-200 dark:border-dark-5">
                        <div class="dropdown-toggle w-8 h-8 rounded-full overflow-hidden bg-gray-100 rounded-full shadow-lg image-fit zoom-in scale-110 mr-4">
                            <img alt="img" src="<?= base_url(); ?>/vendor/dist/user/<?= $user->gambar; ?>">
                        </div>
                        <span class="font-medium text-base mr-4">
                            <?= $p->nama ?>
                        </span>
                        <span class="font-regular text-base mr-auto">
                            <?= $p->email ?>
                        </span>
                   </div>

                   <?php endforeach ?>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: Content -->
<script>
    $('#btn-undang-pengajar').click(function() {
        $('#add-pengajar-form').toggleClass('active');
    });

    $('#hide-pengajar-form').click(function() {
        $('#add-pengajar-form').removeClass('active');
    });
    
    
    $('#add-pengajar-form form').submit(function(e) {
        console.log(`${$('#email-pengajar').val()}`);
        const email_pengajar = $('#email-pengajar').val();
        const kode_kelas = window.location.href.split('/').pop();
        console.log(kode_kelas);
        $.ajax({
            type: 'POST',
            data: {
                email_pengajar: email_pengajar.trim(),
                kode_kelas: kode_kelas
            },
            url: '<?= base_url() ?>/su/invite_teacher',
            dataType: 'JSON',
            complete: function(response) {
                const data = JSON.parse(response.responseText);

                Swal.fire({
                    title: data.message,
                    icon: (data.status == 404) ? 'error' : 'success'
                });

                if (data.status == 201) {
                    // Updata list pengajar
                    $('#list-pengajar').html(data.content);
                }
            }
        });
        $('#isi_komen').val('');
        e.preventDefault();
    });
</script>

<?= $this->endSection(); ?>
