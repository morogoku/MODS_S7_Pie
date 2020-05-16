.class public Lcom/android/systemui/qs/QSTileHost$TilesMap;
.super Ljava/lang/Object;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TilesMap"
.end annotation


# static fields
.field public static EID_DETAIL:I

.field public static EID_TILE_STATE:I

.field public static SID_DETAIL:I

.field public static mTilesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->mTilesMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->SID_DETAIL:I

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->EID_TILE_STATE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->EID_DETAIL:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SystemUIAnalytics"

    const-string v1, "TilesMap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTileHost$TilesMap;->initMap(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileHost$TilesMap;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSTileHost$TilesMap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    return-object v0
.end method

.method private getItems(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->mTilesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private initMap(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/systemui/qs/QSTileHost$TilesMap;->mTilesMap:Ljava/util/HashMap;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->SID_DETAIL:I

    const/4 v1, 0x0

    if-gt v0, p2, :cond_2

    sget v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->EID_DETAIL:I

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTileHost$TilesMap;->getItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method
