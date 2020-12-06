.class public Lcom/android/systemui/popup/view/SimTrayDialog;
.super Ljava/lang/Object;
.source "SimTrayDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/popup/util/DisplayManagerWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    iput p2, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mType:I

    new-instance v0, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;-><init>(Lcom/android/systemui/popup/util/DisplayManagerWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mData:Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

    iput-object p4, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mShowRunnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mData:Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

    invoke-virtual {v1}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;->getTitleMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mData:Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

    iget v3, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mType:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;->getBodyMessage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mData:Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

    invoke-virtual {v3}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;->getBodyImage()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f13027a

    invoke-direct {v3, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0d020c

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0a052e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const v9, 0x7f0a052f

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v6, v10

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120d36

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$iFFD_7PzqssFHhby41tPmgCupBM;

    invoke-direct {v4, p0}, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$iFFD_7PzqssFHhby41tPmgCupBM;-><init>(Lcom/android/systemui/popup/view/SimTrayDialog;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d9

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    new-instance v10, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$sMZHNywKSJe7bgLPU9qjF-AzWTQ;

    invoke-direct {v10, p0}, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$sMZHNywKSJe7bgLPU9qjF-AzWTQ;-><init>(Lcom/android/systemui/popup/view/SimTrayDialog;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v10, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$r8UnYEKYac-i_-YkqmaVO6FkcMI;

    invoke-direct {v10, p0}, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$r8UnYEKYac-i_-YkqmaVO6FkcMI;-><init>(Lcom/android/systemui/popup/view/SimTrayDialog;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v4
.end method

.method public static synthetic lambda$createDialog$0(Lcom/android/systemui/popup/view/SimTrayDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public static synthetic lambda$createDialog$1(Lcom/android/systemui/popup/view/SimTrayDialog;Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mShowRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$createDialog$2(Lcom/android/systemui/popup/view/SimTrayDialog;Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/popup/view/SimTrayDialog;->dismiss()V

    invoke-direct {p0}, Lcom/android/systemui/popup/view/SimTrayDialog;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
