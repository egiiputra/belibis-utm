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
                <div class="flex flex-col sm:flex-row items-center p-5 border-b border-gray-200 dark:border-dark-5">
                    <h2 class="font-medium text-base mr-auto">
                        Pengajar
                    </h2>
                </div>
                <div class="p-5">
                <?php foreach ($pengajar as $p): ?>

                    <div class="flex flex-row items-start p-5 border-b border-gray-200 dark:border-dark-5">
                        <div class="dropdown-toggle w-8 h-8 rounded-full overflow-hidden bg-gray-100 rounded-full shadow-lg image-fit zoom-in scale-110 mr-4">
                            <img alt="img" src="<?= base_url(); ?>/vendor/dist/user/<?= $user->gambar; ?>">
                        </div>
                        <span class="font-medium text-base mr-4">
                            <?= $p->nama_user ?>
                        </span>
                        <span class="font-regular text-base mr-auto">
                            <?= $p->email_user ?>
                        </span>
                   </div>

                <?php endforeach ?>
                </div>
            </div>
            <div class="intro-y box">
                <div class="flex flex-col sm:flex-row items-center p-5 border-b border-gray-200 dark:border-dark-5">
                    <h2 class="font-medium text-base mr-auto">
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
<
<div class="content">

    <div class="pos intro-y grid grid-cols-12 gap-5">
        <div class="col-span-12 lg:col-span-12">
            <div class="grid grid-cols-12 gap-6">
                <div class="col-span-12 lg:col-span-12">
                    <div class="box mt-5">
                        <div class="intro-y news p-5 box mt-8">
                            <?php foreach ($pengajar as $p): ?>
                                <?= $p->nama_user ?>
                                <?= $p->email_user ?>
                            <?php endforeach ?>

                            <?php foreach ($pelajar as $p): ?>
                                <?= $p->nama ?>
                                <?= $p->email ?>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- END: Content -->
<script>
    $('#kirim_komen_materi').click(function() {
        var kode_materi = $('#materi_code').val();
        var isi_komen = $('#isi_komen').val();
        $.ajax({
            type: 'POST',
            data: {
                kode_materi: kode_materi,
                isi_komen: isi_komen
            },
            url: '<?= base_url() ?>/stream/materi',
            dataType: 'JSON',
            success: function(response) {
                console.log(response.responseText);
            }
        });
        $('#isi_komen').val('');
    });

    var kode_materi = $('#materi_code').val();
    setInterval(() => {
        $.ajax({
            type: 'POST',
            data: {
                kode_materi: kode_materi
            },
            url: '<?= base_url() ?>/stream/getmateri',
            success: function(data) {
                document.getElementById("accordion_komen_streammateri").innerHTML = data;
            }
        });
    }, 2000);
</script>

<?= $this->endSection(); ?>
