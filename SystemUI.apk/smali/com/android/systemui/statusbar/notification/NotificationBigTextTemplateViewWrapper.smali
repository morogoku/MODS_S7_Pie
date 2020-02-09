.class public Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationBigTextTemplateViewWrapper.java"


# instance fields
.field private mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

.field private mIsUpdateNotification:Z

.field private mOriginalText:Landroid/text/SpannableString;

.field private mRevertText:Landroid/text/SpannableString;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mIsUpdateNotification:Z

    return-void
.end method

.method private resolveViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ImageFloatingTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mIsUpdateNotification:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mIsUpdateNotification:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->flattenTextColor()V

    :cond_0
    return-void
.end method


# virtual methods
.method public flattenTextColor()V
    .locals 7

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->flattenTextColor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mOriginalText:Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->isOpenThemeOrColoring()Z

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mOriginalText:Landroid/text/SpannableString;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const-class v5, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationColorPicker;

    const v6, 0x1020558

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const-class v5, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationColorPicker;

    const/16 v6, -0x69

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method

.method public getOriginalSpannable()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mOriginalText:Landroid/text/SpannableString;

    return-object v0
.end method

.method public getRevertedSpannable()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    return-object v0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->resolveViews(Landroid/service/notification/StatusBarNotification;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
