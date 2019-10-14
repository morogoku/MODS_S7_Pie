.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;
.super Landroid/widget/LinearLayout;
.source "CalendarNoEventView.java"


# instance fields
.field private mContentView:Lcom/android/systemui/widget/SystemUITextView;

.field private mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

.field private mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->closeWindow()V

    return-void
.end method

.method private closeWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const-string/jumbo v1, "servicebox_calendar"

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method private initViews()V
    .locals 4

    const v0, 0x7f0a04f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04f7

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v3, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->updateViews()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->updateViewStyleOnWhiteWallpaper()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->updateViews()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->initViews()V

    return-void
.end method

.method public setStatusCallback(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-void
.end method

.method public updateViewStyleOnWhiteWallpaper()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1}, Lcom/android/systemui/widget/SystemUITextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContext:Landroid/content/Context;

    const v5, 0x7f0602f3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContext:Landroid/content/Context;

    const v5, 0x7f0602ff

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContext:Landroid/content/Context;

    const v5, 0x7f0602fe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    :cond_3
    :goto_0
    return-void
.end method

.method public updateViews()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mContentView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b70

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b6e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->mOpenCalendarView:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b71

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
