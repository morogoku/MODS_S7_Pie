.class Lcom/android/systemui/qs/tiles/NavigationBarTile$2;
.super Ljava/lang/Object;
.source "NavigationBarTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NavigationBarTile;->showOneHandModePopup(Landroid/content/DialogInterface$OnDismissListener;)V
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$2;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.ONEHAND_OPERATION_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, ":settings:fragment_args_key"

    const-string v3, "gesture_type"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$2;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$200(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method
