.class Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2$1;
.super Ljava/lang/Object;
.source "AppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;

.field final synthetic val$d:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2$1;->this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;

    iput-object p2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2$1;->val$d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2$1;->this$1:Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;

    iget-object v0, v0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;->val$info:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2$1;->val$d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->notifyAppDataLoaded(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
