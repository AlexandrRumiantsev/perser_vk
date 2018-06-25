<?php

/* @var $this yii\web\View */
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;


$this->title = 'My Yii Application';
?>
<div class="site-index">

     <div class="row">
            <div class="col-lg-5">
                <?php $form = ActiveForm::begin(['id' => 'parse_form']); ?>
                    <?= $form->field($parse_form, 'tel')->textInput() ?>
                    <?= $form->field($parse_form, 'name')->textInput() ?>
                    <?= $form->field($parse_form, 'mail')->textInput() ?>                
                    <div class="form-group">
                        <?= Html::submitButton('Submit', ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
                    </div>
                <?php ActiveForm::end(); ?>
</div>
         <div class='clr'></div>
<?php



