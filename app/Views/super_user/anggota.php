<?= $this->extend('layout/user/kompleks'); ?>
<?= $this->section('content'); ?>
<?= session()->getFlashdata('pesan'); ?>

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
