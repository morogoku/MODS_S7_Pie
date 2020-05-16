.class final Lcom/android/server/am/DisplayChooserDialog;
.super Landroid/app/AlertDialog;
.source "DisplayChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayChooser"


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private final mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

.field private final mInfo:Lcom/android/server/am/DisplayChooserInfo;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTargetDisplayId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/DisplayChooserInfo;I)V
    .registers 10

    const v0, 0x103054e

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/android/server/am/DisplayChooserDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/DisplayChooserDialog$1;-><init>(Lcom/android/server/am/DisplayChooserDialog;)V

    iput-object v0, p0, Lcom/android/server/am/DisplayChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    iput-object p2, p0, Lcom/android/server/am/DisplayChooserDialog;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/DisplayChooserDialog;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    iput p4, p0, Lcom/android/server/am/DisplayChooserDialog;->mTargetDisplayId:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/DisplayChooserDialog;->setCancelable(Z)V

    nop

    const v1, 0x10402c6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/DisplayChooserDialog;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    iget-object v3, p2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/DisplayChooserInfo;->getAppName(Landroid/content/Context;Lcom/android/server/am/ActivityStackSupervisor;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/DisplayChooserDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/DisplayChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x1090064

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x102029d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/server/am/DisplayChooserDialog;->mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Lcom/android/server/am/DisplayChooserDialog;->setView(Landroid/view/View;)V

    const v3, 0x10402c3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Lcom/android/server/am/DisplayChooserDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v3, 0x1040000

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v3, p0}, Lcom/android/server/am/DisplayChooserDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/server/am/DisplayChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/am/DisplayChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x20000

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/android/server/am/DisplayChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x51

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/android/server/am/DisplayChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x110

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/android/server/am/DisplayChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    packed-switch p2, :pswitch_data_52

    goto :goto_4f

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/DisplayChooserDialog;->mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/android/server/am/DisplayChooserDialog;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_chooser_do_not_show_again"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1b
    const-string v1, "DisplayChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick Positive button. Do_not_show_again="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/DisplayChooserDialog;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v2, p0, Lcom/android/server/am/DisplayChooserDialog;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    iget v3, p0, Lcom/android/server/am/DisplayChooserDialog;->mTargetDisplayId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksBackAndStartPendingActivity(Lcom/android/server/am/DisplayChooserInfo;I)V

    iget-object v1, p0, Lcom/android/server/am/DisplayChooserDialog;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiDisplayManagerService;->setChooserDialogShowRequested(Z)V

    goto :goto_4f

    :pswitch_46
    const-string v0, "DisplayChooser"

    const-string/jumbo v1, "onClick Negative button."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_4f
    return-void

    nop

    nop

    :pswitch_data_52
    .packed-switch -0x2
        :pswitch_46
        :pswitch_4
    .end packed-switch
.end method

.method public onStart()V
    .registers 5

    iget v0, p0, Lcom/android/server/am/DisplayChooserDialog;->mTargetDisplayId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/DisplayChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/server/am/DisplayChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_26
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    invoke-virtual {p0}, Lcom/android/server/am/DisplayChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/DisplayChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    invoke-virtual {p0}, Lcom/android/server/am/DisplayChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/DisplayChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/am/DisplayChooserDialog;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->setChooserDialogShowRequested(Z)V

    return-void
.end method
