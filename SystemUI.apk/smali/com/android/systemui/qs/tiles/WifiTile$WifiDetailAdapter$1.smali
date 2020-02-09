.class Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireScrollToDetail(II)V

    return-void
.end method
