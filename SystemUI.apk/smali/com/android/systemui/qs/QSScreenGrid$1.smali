.class Lcom/android/systemui/qs/QSScreenGrid$1;
.super Ljava/lang/Object;
.source "QSScreenGrid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSScreenGrid;->initScreenGridDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSScreenGrid;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSScreenGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGrid$1;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGrid$1;->this$0:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScreenGrid;->dismiss()V

    return-void
.end method
