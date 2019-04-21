.class public Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;
.super Ljava/lang/Object;
.source "AlertDialogFactory.java"


# instance fields
.field private final mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private final mContext:Landroid/content/Context;

.field private mPasswordTextView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic lambda$getBikeModeDialog$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$getProKioskModeDialog$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$getProKioskModeDialog$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public getBikeModeDialog(ZLjava/lang/Runnable;)Landroid/app/AlertDialog;
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    const v1, 0x1040398

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1040396

    if-eqz p1, :cond_1a

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    const v3, 0x1040397

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1040395

    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x1040394

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$AlertDialogFactory$f36HwHg3C8fev3QUgPwvI54Uvbo;

    invoke-direct {v3, p2}, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$AlertDialogFactory$f36HwHg3C8fev3QUgPwvI54Uvbo;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    return-object v2
.end method

.method public getInsertSimCardDialog()Landroid/app/AlertDialog;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10403a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10403a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    return-object v0
.end method

.method public getProKioskModeDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10403b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10403af

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-virtual {v2, v4, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$AlertDialogFactory$qB_ZMa3iQqRy2y3jDgJz9hcm344;

    invoke-direct {v3, p1}, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$AlertDialogFactory$qB_ZMa3iQqRy2y3jDgJz9hcm344;-><init>(Ljava/lang/Runnable;)V

    const v4, 0x104000a

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$AlertDialogFactory$16W5ul4fc9gXyIRPoY2sVwh5h34;

    invoke-direct {v3, p2}, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$AlertDialogFactory$16W5ul4fc9gXyIRPoY2sVwh5h34;-><init>(Ljava/lang/Runnable;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v1
.end method

.method public getProKioskPasswordText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProKioskPasswordWindowToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->mPasswordTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
