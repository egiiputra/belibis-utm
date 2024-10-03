<?= $this->extend('layout/user/kompleks'); ?>
<?= $this->section('content'); ?>
<?= session()->getFlashdata('pesan'); ?>

<div class="content">
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
