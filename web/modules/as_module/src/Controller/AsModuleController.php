<?php

namespace Drupal\as_module\Controller;

use Drupal\Core\Controller\ControllerBase;

/**
 * Returns responses for AS module routes.
 */
class AsModuleController extends ControllerBase {

  /**
   * Builds the response.
   */
  public function build() {

    $build['content'] = [
      '#type' => 'item',
      '#markup' => $this->t('It works!'),
    ];

    return $build;
  }

}
