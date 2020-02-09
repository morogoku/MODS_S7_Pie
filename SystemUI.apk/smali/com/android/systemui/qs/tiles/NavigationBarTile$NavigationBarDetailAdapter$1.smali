.class Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;
.super Ljava/lang/Object;
.source "NavigationBarTile.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

.field final synthetic val$optionContainer:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;Landroid/widget/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->val$optionContainer:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v0

    const v1, 0x7f0a0371

    if-ne v0, v1, :cond_3

    const v0, 0x7f0a036c

    if-eq p2, v0, :cond_2

    const v0, 0x7f0a047c

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1100(Lcom/android/systemui/qs/tiles/NavigationBarTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1$1;-><init>(Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1200(Lcom/android/systemui/qs/tiles/NavigationBarTile;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1000(Lcom/android/systemui/qs/tiles/NavigationBarTile;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/NavigationBarTile$NavigationBarDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/NavigationBarTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NavigationBarTile;->access$1000(Lcom/android/systemui/qs/tiles/NavigationBarTile;Z)V

    nop

    :cond_3
    :goto_0
    return-void
.end method
