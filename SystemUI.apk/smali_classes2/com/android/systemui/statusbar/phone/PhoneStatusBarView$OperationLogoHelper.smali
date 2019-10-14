.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OperationLogoHelper"
.end annotation


# instance fields
.field private mIsAttached:Z

.field private mOperatorIconId:I

.field private mOperatorLogoIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorIconId:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mIsAttached:Z

    return-void
.end method


# virtual methods
.method public getParentViewGroup()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a0379

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public init()V
    .locals 3

    const-string v0, "PhoneStatusBarView_OperationLogoHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(START) mIsAttached:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mIsAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOperationLogoHelper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOperationLogoHelper:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->getOperatorLogoIconForHome()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->getOperatorLogoIconResourceId()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->setOperatorLogoIndicator(Landroid/widget/ImageView;I)V

    :cond_0
    return-void
.end method

.method public setOperatorLogoIndicator(Landroid/widget/ImageView;I)V
    .locals 7

    const-string v0, "PhoneStatusBarView_OperationLogoHelper"

    const-string v1, "setOperatorLogoIndicator( START )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mIsAttached:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mIsAttached:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "PhoneStatusBarView_OperationLogoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      logoParent.removeView(mOperatorLogoIcon); "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mIsAttached:Z

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorIconId:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mIsAttached:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070243

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070244

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2, v3, v1, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-boolean v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mPreviousLogoVisibility:Z

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    const/16 v6, 0x8

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const-string v2, "PhoneStatusBarView_OperationLogoHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      logoParent.addView(mOperatorLogoIcon); "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mIsAttached:Z

    :cond_2
    const-string v0, "PhoneStatusBarView_OperationLogoHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOperatorLogoIndicator( END ) mOperatorLogoIcon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsAttached:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mIsAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateOperatorLogoVisibility(Z)V
    .locals 3

    const-string v0, "PhoneStatusBarView_OperationLogoHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOperatorLogoVisibility(visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") mOperatorLogoIcon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->mOperatorLogoIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
