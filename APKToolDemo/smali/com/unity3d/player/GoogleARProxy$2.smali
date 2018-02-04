.class final Lcom/unity3d/player/GoogleARProxy$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/GoogleARProxy;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/GoogleARProxy;


# direct methods
.method constructor <init>(Lcom/unity3d/player/GoogleARProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/GoogleARProxy$2;->a:Lcom/unity3d/player/GoogleARProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleARProxy$2;->a:Lcom/unity3d/player/GoogleARProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleARProxy;->a:Lcom/unity3d/player/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/GoogleARProxy$2;->a:Lcom/unity3d/player/GoogleARProxy;

    iget-object v0, v0, Lcom/unity3d/player/GoogleARProxy;->a:Lcom/unity3d/player/m;

    const-string v1, "create"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/unity3d/player/GoogleARProxy$2;->a:Lcom/unity3d/player/GoogleARProxy;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception creating "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/player/GoogleARProxy$2;->a:Lcom/unity3d/player/GoogleARProxy;

    iget-object v3, v3, Lcom/unity3d/player/GoogleARProxy;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " VR on UI Thread. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unity3d/player/GoogleARProxy;->reportError(Ljava/lang/String;)V

    goto :goto_0
.end method
