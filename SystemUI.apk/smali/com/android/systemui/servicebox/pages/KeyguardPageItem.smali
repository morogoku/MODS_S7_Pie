.class public Lcom/android/systemui/servicebox/pages/KeyguardPageItem;
.super Ljava/lang/Object;
.source "KeyguardPageItem.java"


# static fields
.field private static final INTERNAL_PAGES:[Ljava/lang/String;

.field private static final RES_ID:[I


# instance fields
.field private mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "servicebox_clock"

    const-string/jumbo v1, "servicebox_music"

    const-string/jumbo v2, "servicebox_calendar"

    const-string/jumbo v3, "servicebox_alarm"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->INTERNAL_PAGES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->RES_ID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d00a4
        0x7f0d01f3
        0x7f0d01ff
        0x7f0d01f1
        0x7f0d01f7
    .end array-data
.end method

.method private constructor <init>(ILcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->mType:I

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    return-void
.end method

.method public static createInstanceInternalPage(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardPageItem;
    .locals 5

    invoke-static {p0}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getInternalPageType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;-><init>(ILcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    return-object v2

    :cond_1
    :goto_0
    const-string v2, "KeyguardPageItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createInstanceInternalPage() wrong pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static createInstanceRemoteViewsPage(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)Lcom/android/systemui/servicebox/pages/KeyguardPageItem;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "KeyguardPageItem"

    const-string v1, "createInstanceRemoteViewsPage() wrong param"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;-><init>(ILcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    return-object v0
.end method

.method private static getInternalPageType(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->INTERNAL_PAGES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static isInternalPage(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getInternalPageType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getPageView(Landroid/content/Context;ZI)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
    .locals 3

    sget-object v0, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->RES_ID:[I

    iget v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->mType:I

    aget v0, v0, v1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->setItem(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "item is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const-class v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "page is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
