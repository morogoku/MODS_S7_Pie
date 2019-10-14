.class Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->access$5500(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailItems;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->access$5400(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0a0087

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->access$5400(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0a0088

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
