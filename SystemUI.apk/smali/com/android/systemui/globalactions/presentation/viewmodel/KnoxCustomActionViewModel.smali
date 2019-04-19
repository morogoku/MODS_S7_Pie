.class public Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;
.super Ljava/lang/Object;
.source "KnoxCustomActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private mActionInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private mContext:Landroid/content/Context;

.field mIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mIntent:Landroid/content/Intent;

.field mIntentAction:I

.field mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mActionInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public onPress()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntentAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntentAction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mActionInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setIntentAction(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntentAction:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mText:Ljava/lang/String;

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
