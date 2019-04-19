.class Lcom/android/systemui/qs/tiles/NavigationBarTile$1;
.super Ljava/lang/Object;
.source "NavigationBarTile.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NavigationBarTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$1;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$1;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$100(Lcom/android/systemui/qs/tiles/NavigationBarTile;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$1;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->refreshState()V

    return-void
.end method
