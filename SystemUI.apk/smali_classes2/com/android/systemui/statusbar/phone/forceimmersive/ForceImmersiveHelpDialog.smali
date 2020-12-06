.class public Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;
.super Ljava/lang/Object;
.source "ForceImmersiveHelpDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

.field private mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private messageList:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->messageList:[I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    return-void

    :array_0
    .array-data 4
        0x7f120429
        0x7f12042a
        0x7f12042b
        0x7f12042c
    .end array-data
.end method

.method private creatDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->createForceImmersiveHelpDialogView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f12042d

    new-instance v2, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$3VVy-QuDwtxwh5spjJfyrQ-11UU;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$3VVy-QuDwtxwh5spjJfyrQ-11UU;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f12042e

    new-instance v2, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$Psx65IW9KYbwTtc1fQ2IHnVXJqg;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$Psx65IW9KYbwTtc1fQ2IHnVXJqg;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$sMGN-sPrI3AdfP1Hxmp1coFw5SQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$sMGN-sPrI3AdfP1Hxmp1coFw5SQ;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$bKuOVIxMTuxqPkxcIve9rbBsQYw;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$ForceImmersiveHelpDialog$bKuOVIxMTuxqPkxcIve9rbBsQYw;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createForceImmersiveHelpDialogView()Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mContext:Landroid/content/Context;

    const v3, 0x1030132

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    const v4, 0x7f0d012c

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    const v7, 0x3fa66666    # 1.3f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_0

    const v6, 0x3fa66666    # 1.3f

    :cond_0
    const v7, 0x7f0a020b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mContext:Landroid/content/Context;

    const v9, 0x7f12042f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v8, v5

    mul-float/2addr v8, v6

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v8, 0x7f0a020c

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->messageList:[I

    array-length v12, v11

    move v13, v9

    :goto_0
    if-ge v13, v12, :cond_1

    aget v14, v11, v13

    const v15, 0x7f0d012d

    invoke-virtual {v2, v15, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    const v3, 0x7f0a020a

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v8, "\u2022 "

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v8, v5, v6

    invoke-virtual {v3, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v8, 0x7f0a020c

    invoke-virtual {v15, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v9, v5, v6

    move-object/from16 v17, v1

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v17

    const/4 v3, 0x0

    const v8, 0x7f0a020c

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v17, v1

    const v1, 0x7f0a020d

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f120428

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v3, v5, v6

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v4
.end method

.method static synthetic lambda$creatDialog$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$creatDialog$1(Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;Landroid/content/DialogInterface;I)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.NAVIGATION_BAR_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v3, "ForceImmersiveHelpDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$creatDialog$2(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$creatDialog$3(Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public show(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ForceImmersiveHelpDialog;->creatDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
