.class public Lcom/samsung/systemui/splugins/navigationbar/IconTheme;
.super Ljava/lang/Object;
.source "IconTheme.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;


# instance fields
.field mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/systemui/splugins/navigationbar/IconType;",
            "Lcom/samsung/systemui/splugins/navigationbar/IconResource;",
            ">;"
        }
    .end annotation
.end field

.field mThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;->mThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;->mData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addData(Lcom/samsung/systemui/splugins/navigationbar/IconType;Lcom/samsung/systemui/splugins/navigationbar/IconResource;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;->mData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    return-object v0
.end method
