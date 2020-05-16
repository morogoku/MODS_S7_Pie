.class public Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationTypoTemplateViewWrapper.java"


# instance fields
.field private mOriginalDetail:Landroid/text/SpannableString;

.field private mOriginalText:Landroid/text/SpannableString;

.field private mRevertDetail:Landroid/text/SpannableString;

.field private mRevertText:Landroid/text/SpannableString;

.field private mTypoDetail:Landroid/widget/TextView;

.field private mTypoText:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method private resolveViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x7f0a0607

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mTypoText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x7f0a0603

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mTypoDetail:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->flattenTextColor()V

    return-void
.end method


# virtual methods
.method public flattenTextColor()V
    .locals 8

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->flattenTextColor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mTypoText:Landroid/widget/TextView;

    const/16 v1, -0x69

    const v2, 0x1020558

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mTypoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mOriginalText:Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->isOpenThemeOrColoring()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mOriginalText:Landroid/text/SpannableString;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const-class v7, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v5, v6, v4, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const-class v7, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v5, v6, v4, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mTypoDetail:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mTypoDetail:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mOriginalDetail:Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->isOpenThemeOrColoring()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mOriginalDetail:Landroid/text/SpannableString;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const-class v7, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v2

    invoke-direct {v6, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v5, v6, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mRevertDetail:Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mRevertDetail:Landroid/text/SpannableString;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-class v6, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v1

    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v2, v5, v4, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    return-void
.end method

.method public getOriginalDetailSpannable()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mOriginalDetail:Landroid/text/SpannableString;

    return-object v0
.end method

.method public getOriginalTextSpannable()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mOriginalText:Landroid/text/SpannableString;

    return-object v0
.end method

.method public getRevertedDetailSpannable()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mRevertDetail:Landroid/text/SpannableString;

    return-object v0
.end method

.method public getRevertedTextSpannable()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    return-object v0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->resolveViews(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
