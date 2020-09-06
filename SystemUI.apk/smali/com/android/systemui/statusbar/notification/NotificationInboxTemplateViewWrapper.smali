.class public Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationInboxTemplateViewWrapper.java"


# instance fields
.field private mInboxText0:Landroid/widget/TextView;

.field private mInboxText1:Landroid/widget/TextView;

.field private mInboxText2:Landroid/widget/TextView;

.field private mInboxText3:Landroid/widget/TextView;

.field private mInboxText4:Landroid/widget/TextView;

.field private mInboxText5:Landroid/widget/TextView;

.field private mInboxText6:Landroid/widget/TextView;

.field private mIsUpdateNotification:Z

.field private mOriginalText0:Landroid/text/SpannableString;

.field private mOriginalText1:Landroid/text/SpannableString;

.field private mOriginalText2:Landroid/text/SpannableString;

.field private mOriginalText3:Landroid/text/SpannableString;

.field private mOriginalText4:Landroid/text/SpannableString;

.field private mOriginalText5:Landroid/text/SpannableString;

.field private mOriginalText6:Landroid/text/SpannableString;

.field private mRevertText0:Landroid/text/SpannableString;

.field private mRevertText1:Landroid/text/SpannableString;

.field private mRevertText2:Landroid/text/SpannableString;

.field private mRevertText3:Landroid/text/SpannableString;

.field private mRevertText4:Landroid/text/SpannableString;

.field private mRevertText5:Landroid/text/SpannableString;

.field private mRevertText6:Landroid/text/SpannableString;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mIsUpdateNotification:Z

    return-void
.end method

.method private resolveViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020339

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102033a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102033b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102033c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102033d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText4:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102033e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText5:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102033f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText6:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mIsUpdateNotification:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mIsUpdateNotification:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->flattenTextColor()V

    :cond_0
    return-void
.end method


# virtual methods
.method public flattenTextColor()V
    .locals 9

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->flattenTextColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->isOpenThemeOrColoring()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    const/16 v2, -0x69

    const v3, 0x1020558

    const/16 v4, 0x21

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText0:Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText0:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText0:Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText0:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText1:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText1:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText1:Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText1:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText1:Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText1:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText2:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    const-string v1, ""

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText2:Landroid/text/SpannableString;

    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText2:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText2:Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText2:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText3:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    const-string v1, ""

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText3:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText3:Landroid/text/SpannableString;

    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText3:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText3:Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText3:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText4:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    const-string v1, ""

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText4:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText4:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText4:Landroid/text/SpannableString;

    if-eqz v0, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText4:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText4:Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText4:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText5:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    const-string v1, ""

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText5:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText5:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText5:Landroid/text/SpannableString;

    if-eqz v0, :cond_a

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText5:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText5:Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText5:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText6:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    const-string v1, ""

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText6:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText6:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText6:Landroid/text/SpannableString;

    if-eqz v0, :cond_c

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText6:Landroid/text/SpannableString;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-class v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v3

    invoke-direct {v7, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v6, v7, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText6:Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText6:Landroid/text/SpannableString;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const-class v7, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v2

    invoke-direct {v6, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v3, v6, v5, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    return-void
.end method

.method public getOriginalSpannable()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText0:Landroid/text/SpannableString;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText1:Landroid/text/SpannableString;

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText2:Landroid/text/SpannableString;

    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText3:Landroid/text/SpannableString;

    return-object v0

    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText4:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText4:Landroid/text/SpannableString;

    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText5:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText5:Landroid/text/SpannableString;

    return-object v0

    :cond_5
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText6:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mOriginalText6:Landroid/text/SpannableString;

    return-object v0

    :cond_6
    const-string v0, ""

    return-object v0
.end method

.method public getRevertedSpannable()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText0:Landroid/text/SpannableString;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText1:Landroid/text/SpannableString;

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText2:Landroid/text/SpannableString;

    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText3:Landroid/text/SpannableString;

    return-object v0

    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText4:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText4:Landroid/text/SpannableString;

    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText5:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText5:Landroid/text/SpannableString;

    return-object v0

    :cond_5
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText6:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mRevertText6:Landroid/text/SpannableString;

    return-object v0

    :cond_6
    const-string v0, ""

    return-object v0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->resolveViews(Landroid/service/notification/StatusBarNotification;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method
